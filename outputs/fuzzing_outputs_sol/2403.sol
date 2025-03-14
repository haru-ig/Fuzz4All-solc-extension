pragma solidity ^0.8.0;
contract Caller3 {
  function call() public {
    address payable c = address(0x1);
    c.transfer(0xfffffffffff);

  }
}



`

import { Contract, Wallet, Wallets } from "@connext/nxtp-utils";
import { ethers } from "@nomiclabs/hardhat-ethers";

import {
  AaveV2MockArtifact,
  AaveV2MockMockArtifact,
  AaveV2MockReentrancyMockArtifact,
  FactoryArtifact,
  FactoryMockArtifact,
  MasterChefArtifact,
  MasterChefMockArtifact,
  MockArtifact,
  MasterChefMockReentrancyMockArtifact,
} from "./helpers/artifacts.json";

export async function contract1() {
  const wallet20100818231446 = await Wallets.addAndGenerateWallet(
    "<NAME>",
    process.env.PRIVATE_KEY_PATH
  );
  const wallet130524204903 = await Wallets.addAndGenerateWallet(
    "<NAME>",
    process.env.PRIVATE_KEY_PATH2
  );
  const wallet2447134400670 = await Wallets.addAndGenerateWallet(
    "Gammacastle 24/47",
    process.env.PRIVATE_KEY_PATH3
  );
  await deployNetworkOnce(20100818231446, wallet130524204903, wallet2447134400670);
  await deployNetwork();
}

async function deployNetwork() {
  const ethersContract = new ethers.Contract(process.env.AVALAnCHE_CONTRACT_ADRESS, [AaveV2MockmockArtifact.abi], wallet130524204903);
  await deployNetworkOnce(new Wallet("0x0062B94E7512060F27E7841CA4663c4f0a8e47B6", wallet130524204903));
  return;
}

async function deployNetworkOnce(wallet: Wallet, wallet2?: Wallet | undefined, wallet3?: Wallet | undefined) {
  const avMock = new ethers.Contract(process.env.AVALAnCHE_MOCK_CONTRACT_ADRESS, [AvMockmockArtifact.abi], wallet);
  await avMock.mint(wallet.address, 100000);
  const mockFactory = new ethers.Contract(process.env.AVALANCHE_MOCK_FACTORY, [FactorymockArtifact.abi], wallet);
  await mockFactory.mint(avMock.address, 1000);
  const mockFactory2 = new ethers.Contract(process.env.A
