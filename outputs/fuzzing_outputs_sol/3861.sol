pragma solidity ^0.8.0;
contract Example4 {
    function __fallback (address _unused) public payable {}
}

pragma solidity >=0.6.0;
contract Example4 {


    void __fallback (address _unused) public {}
}
