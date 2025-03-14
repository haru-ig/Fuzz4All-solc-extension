pragma solidity ^0.8.0;
contract Mutate60 {
    uint[] private array_;

    function getArray() public view returns (uint[] memory) {
        return array_;
    }

    function writeArray(uint[] calldata w) public {
        array_ = w;
    }

    function add(uint w) public {
       if(w == 1)
       {
        array_[1] = array_ + w;
       }
    }

    function readArray(uint[] calldata w) public returns (uint) {
        uint sum = 0;
        for(uint i = 0; i <= 5; i ++)
        {
            sum = sum * 2;
            sum = sum + w[i];
        }
        return sum;
    }
}
