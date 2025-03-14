pragma solidity ^0.8.0;
contract MutateT7D {
    address A;
    constructor() public {
        (A,) = A.call{data:"0x"}("");
    }
    uint256 A.balance();
}




$solc --optimizer -o t7d_mutate.sol t7d.sol
solhint --enable-all -d 2 t7d.sol
$npx hardhat run --network main --gasLimit '0' --gas price 1 EthT7D.sol




$solc --optimizer -o t7d_solve.sol t7d.sol
solhint --enable-all -d 2 t7d.sol
$npx hardhat run --network main --gasLimit '0' --gas price 1 EthT7D.sol
