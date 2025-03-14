pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_11{
    uint A;
    constructor() public{
        bytes32 constant C=keccak256(abi.encodePacked(""));
        A = 0;
        a();
        A = 10;
    }
    function a() public{
        bytes32 const A = C;
    }
}

pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_12{
    mapping (address => uint) balances;
    uint256 private totalSupply_;
    constructor() public{
        balances[address(0)] += 20000;
        totalSupply_ = 0;
        balances[address(0)] += (40000-20000);
    }

    function totalSupply() public view returns (uint256){
        return totalSupply_;
    }
}

pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_13{
    mapping (address => string) public name;

    constructor(){
        name[msg.sender] = "Joe";
        name[0x7B59E7fC0a9f9101240A643a6A416Dfc8dE8E7F3] = "John";
        name[0xE5f7D8A49f5A3732e607721701e1e51386094A8D] = "James";
        name[0x958dD9e74828DE90a717C5e4e2494a8c99A22472] = "Joshua";
        name[keccak256(abi.encodePacked(0xFFFE)) + 0x7B59E7fC0a9f9101240A643a6A416Dfc8dE8E7F3] = "Mary";
        name[keccak256(abi.encodePacked(0xFFFE)) + 0xE5f7D8A49f5A3732e607721701e1e51386094A8D] = "Patricia";
        name[kecc
