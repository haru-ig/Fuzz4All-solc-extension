pragma solidity ^0.8.0;
contract Test30001 is Test30000 {
    constructor (address _adr) Test30000 ("") {}
    event Log ();
}
pragma solidity ^0.8.0;
contract Test30002 is Test30001 {}

pragma solidity ^0.8.0;
contract Test30003 is Test30001 {
    constructor (address _adr) Test30001 ("") {}
    function Test30003() external {}
}
