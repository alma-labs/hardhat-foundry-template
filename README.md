# 🤓 AlmaLabs Hardhat Foundry Typescript Template

## 💪 Features

A repo combining Foundry and Hardhat to get the best of both worlds:

- 🛠️ Fuzzing & Advanced Testing (w/ Foundry)
- 🤝 Integration & JS testing (w/ Hardhat)
- 🪖 Etherscan Verifications (w/ Hardhat)
- 🚀 Smooth Deployments (w/ Hardhat)
- 🛜 Example Network Config
- 🔥 Typescript & Ethers.js

## 🚗 Getting Started

1. Run `npm i`.
2. Copy `.env.example` as `.env` and deploy!

## 🤝 Helpful Repo Commands

Hardhat

- `npx hardhat test` to test `.ts` files.
- `REPORT_GAS=true npx hardhat test`
- `npx hardhat ignition deploy ignition/modules/Lock.ts --network sepolia --deployment-id sepolia-deployment` to deploy specific contracts
- `npx hardhat ignition verify sepolia-deployment` to verify deployment with corresponding ID

Foundry

- `forge test` run Foundry tests
- `forge build` compile Foundry contracts
