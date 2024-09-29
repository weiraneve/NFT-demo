## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

## command

- deploy NFT
forge script script/DeployMyNFT.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast

当合约部署之后，把成功部署返回的hash地址值，填入MintNFT.s.sol文件的<YOUR_DEPLOYED_CONTRACT_ADDRESS>，然后执行铸造命令

- mint NFT
forge script script/MintNFT.s.sol --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
