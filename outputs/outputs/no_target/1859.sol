pragma solidity ^0.8.0;
contract Mutate16 {
    constructor(address) public {

        address a = new address(uint160(-1));

        address b = 0xa4c837657AEEe519EF590c7E7867150451E4c392;



        uint a_2;

        require((a_2 = a)-254, "first");
        require((a_2 = a) & 254, "second");
        require((a_2 = a) | 254, "third");
        require((a_2 = a) ^ 254, "fourth");
    }

    modifier a {
        _;
    }

    modifier b {

        emit(uint128(address(this)));
        _;
    }

}
