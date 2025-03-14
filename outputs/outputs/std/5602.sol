pragma solidity ^0.8.0;
contract Mutate186{
    function random(uint x) public pure returns (uint){
        return uint(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", uint256(x))))
    }
}
pragma solidity ^0.8.0;
contract Mutate192{
    event SomeEvent(uint x, uint y);
    uint public immutable x;
    constructor(uint _x){
        x = _x;
    }
    function random() public pure returns (uint){

        if (uint(random(uint(bytes(this).call{gas:2000000}(abi.encodePacked("\x19Ethereum Signed Message:\n32", x))))) %2 == 0) return 1;
        else return 0;
    }
    function get() public {
        SomeEvent(x, random());
    }
}
