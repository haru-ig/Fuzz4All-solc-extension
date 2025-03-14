pragma solidity ^0.8.0;
contract ArrayMutations_v6 {
    uint256 x_;
    uint256 x_mutated_by_swap;

    function getX() public view returns(uint256) {
        return x_;
    }

    function setX(uint256 x) public {
        x_ = x;
    }

    function getRandomValue() public pure returns(uint256) {
        return uint256(keccak256(abi.encode(blockhash(uint8(block.number % 20))))));
    }

    function swap() public view returns(uint256) {
        uint256 tmp;
        assembly {
            tmp := x_mutated_by_swap
        }
        return tmp;
    }
}
pragma solidity ^0.8.0;
contract ArrayMutations_v7 {
    uint256 x_;
    double private d_;

    function getX() public view returns(uint256) {
        return x_;
    }
    function getDouble() public view returns(double) {
        return d_;
    }

    struct MyStruct {
        uint256 a;
    }

    function setX(uint256 x) public {
        x_ = x;
    }
    function setDouble(uint256 x) public {
        d_ = x;
    }
}
pragma solidity ^0.8.0;
contract ArrayMutations_v8 {
    uint256 x_;

    function getX() public view returns(uint256) {
        return x_;
    }

    function checkSwap() public view returns(bool) {
        if(msg.value!= 8)
            return false;
        return x_ >= 5;
    }

    function setX(uint256 x) public {
        x_ = x;
    }
}
