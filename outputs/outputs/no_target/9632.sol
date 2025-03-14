pragma solidity ^0.8.0;
interface IInterface_v2 {
    function barf() external returns(uint160) ;
}

pragma solidity ^0.8.0;
interface IInterface_v1 {
    function bar() external returns(uint160) ;
}
pragma solidity ^0.8.0;
interface IInterface_v0 {
    function bar() external returns(uint160) ;
}

pragma solidity ^0.8.0;
interface IInterface_v3 {
    function bar256(uint40 input) external returns(uint160) ;
}
