pragma solidity ^0.8.0;
contract IERC20Metadata {
    function name() virtual public view returns (string memory) {
       return "";
    }
    function symbol() virtual public view returns (string memory) {
        return "STO";
    }
    function decimals() virtual public view returns (uint8) { return 0; }

    function set(uint8 dec) public {
        decimals = dec;
    }
}
```

## 4. Debugging with ganache-cli
ganache is a local ethereum blockchain server that provides an interactive console to help you develop locally. This allows to view variables, view logs, and change the runtime configuration. To run the contract that I've written on my machine (and I'm so excited about developing!), from the `contracts` folder, run `ganache-cli` using the command:

```bash
ganache-cli -t 0.99 -l 127.0.0.1:7545
```
Running the same with Solidity Compiler:

```bash
solidity --compile-all -o. -v 0.8./contracts/SolidityBasics.sol
```

I see I am able to view the `name` of the Ethercoin contract using the RPC endpoint.

```bash
http:
```

On clicking the contract name, I can then see the `tokenURI` function, which I assume to get the token URI for a contract.

So I've gotten to the bottom of what `ganache-cli` does by looking at the output I see in the RPC. Here's the RPC call:

```bash
curl "http://127.0.0.1:7545/txs/latest" --header "Content-Type: application/json" -s
```
