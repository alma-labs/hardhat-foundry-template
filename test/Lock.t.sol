// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "lib/forge-std/src/Test.sol";
import "../contracts/Lock.sol";

contract LockTest is Test {
    Lock lock;
    uint unlockTime;
    address owner;

    function setUp() public {
        // Set up the unlock time to 1 hour in the future
        unlockTime = block.timestamp + 1 hours;
        lock = new Lock{value: 1 ether}(unlockTime);
        owner = msg.sender;
    }

    function test_CannotWithdrawBeforeUnlockTime() public {
        vm.expectRevert("You can't withdraw yet");
        lock.withdraw();
    }

    function test_CannotWithdrawIfNotOwner() public {
        // Fast forward time to after unlockTime
        vm.warp(unlockTime + 1);

        address nonOwner = address(0x456);
        vm.prank(nonOwner); // Simulate a call from a non-owner address
        vm.expectRevert("You aren't the owner");
        lock.withdraw();
    }
}
