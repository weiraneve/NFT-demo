// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MyNFT.sol";

contract MintNFT is Script {
    function run() external {
        address myNFTAddress = <YOUR_DEPLOYED_CONTRACT_ADDRESS>; // 替换为你的合约地址
        MyNFT myNFT = MyNFT(myNFTAddress);

        vm.startBroadcast();

        myNFT.mint(msg.sender); // 将 NFT 铸造到你的地址
        uint256 tokenId = myNFT.nextTokenId() - 1; // 获取 NFT ID
        console.log("Minted NFT ID:", tokenId);

        vm.stopBroadcast();
    }
}
