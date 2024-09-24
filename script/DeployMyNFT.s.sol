// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MyNFT.sol";

contract DeployMyNFT is Script {
    function run() external {
        vm.startBroadcast();

        MyNFT myNFT = new MyNFT();
        console.log("MyNFT deployed at:", address(myNFT));

        vm.stopBroadcast();
    }
}
