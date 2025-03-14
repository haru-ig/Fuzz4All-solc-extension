pragma solidity ^0.8.0;
contract Test {
    function add_internal(uint a, uint b) public view returns (uint)
        inline assembly {
            let add_res := a+b;

            return add_res;
        }
    function add(uint a, uint b) public view returns (uint)
        inline assembly {
            let add_res := add_internal(a,b);

            return add_res;
        }
}
