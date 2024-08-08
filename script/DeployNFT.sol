// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {NFT} from "../src/NFT.sol";
import "forge-std/console.sol";

contract DeployNFTScript is Script {
    NFT public nftContract;
    uint256 public deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    function run() public {
        vm.startBroadcast(deployerPrivateKey);
        nftContract = new NFT();
        console.log("NFT Contract deployed at address:", address(nftContract));
        vm.stopBroadcast();
    }
}
