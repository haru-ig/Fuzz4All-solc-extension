pragma solidity ^0.8.0;
contract Mutate_0004
{
    uint08 i1 = 0;
    address0 i2 = 0;
    string i3 = "Hello, World!";
    uint public constant n = 3 ** uint08(16);
}

pragma solidity ^0.8.0;
contract Mutate_0005
{
    function f1() public pure returns (string memory) {
        bytes1 b;
        bytes1 c;
        uint x;
        string memory d;
        mapping (bytes1 => bool) b2;
        b1[0] = true;
        b2[c] = true;
        b2[c][b1][bytes1(0)] = true;
        b2[c][b1][b1] = true;
        bytes32 x1;
        (x1, x) = (bytes1(0), x);
        return string(b1);
    }
}

/* $ nvm use 12 ; cd /home/ubuntu/solc ; sudo solc --bin 'contracts/Mutate_0001.sol' --optimize ; echo  ; cat Mint_0001.bin ; cat Mint_0001.bin && echo  ; sudo rm Mint_0001.bin ; cat Mint2_0001.bin ; shasum -a32 Mint2_0001.bin ; sudo rm Mint2_0001.bin ; cat Mint3_0001.bin ; sudo chmod 777 Mint3_0001.bin ; shasum -a32 Mint3_0001.bin ; sudo rm Mint3_0001.bin ; cat Mint6_0001.bin ; shasum -a32 Mint6_0001.bin ; sudo rm Mint6_0001.bin ; cat Mint1_0001.bin ; shasum -a3
