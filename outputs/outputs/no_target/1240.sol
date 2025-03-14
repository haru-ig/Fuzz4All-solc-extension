pragma solidity ^0.8.0;
contract Injection_03
{
    function get (
        uint w1,
        uint w2,
        uint w3
    )
        public
        returns (uint x1, uint x2, uint x3)
    {

        x1 = w3 % w2 * w1 + uint11(uint297(uint297(w1)) + uint249(uint249(w2)) + uint209(uint209(w3)));
        x2 = w1;
        x3 = w2;
    }
}

pragma solidity ^0.8.0;
contract Injection_2
{
    function get (
        uint w1,
        uint w2,
        uint w3
    )
        public
        returns (uint x1, uint x2, uint x3)
    {
        x1 = 2 ** uint150 { uint150: w2 * w1 };
        x2 = w1;
        x3 = w3;
    }
}

pragma solidity ^0.8.0;
contract Injection_5
{
    function get (
        uint w1,
        uint w2,
        uint w3
    )
        public
    {
        uint x1, x2, x3;
        x1 = 1u << w1;
        x2 = (1u << w1 + 1) + uint25(uint256(uint256(uint128(w1 + 1)))));
        x3 = (1u << w1 + 2);
        x1 = x1 / (1 << w2);
    }
}
