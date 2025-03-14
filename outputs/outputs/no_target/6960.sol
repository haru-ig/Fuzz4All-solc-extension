pragma solidity ^0.8.0;
contract TestPrecompiled00284 {
    event Evt(string _s);
    address payable payableRef;
}
contract TestPrecompiled00285 is TestPrecompiled0c856 {
    event Evt(string _s);
    address payable payableRef;
}

pragma solidity ^0.8.0;
contract TestPrecompiled00286 {
    event Evt(string _s);
    address payable payableRef;
    function pay(uint _value) payable {}
}
