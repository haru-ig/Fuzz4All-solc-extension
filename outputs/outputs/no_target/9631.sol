pragma solidity ^0.8.0;
interface IInterface_v2 {
    function bar256(uint input) external returns(uint160) ;
}

pragma solidity ^0.8.0;
interface IInterface_v1 {
    function bar256(uint input) public returns(uint160) ;
}


pragma solidity ^0.8.0;
interface IInterface_v2a {
    function bar256(uint input) public returns(uint160) | { revert("bar256_expected_negative_input"); } ;
}
