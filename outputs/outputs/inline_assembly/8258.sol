pragma solidity ^0.8.0;
contract InlineAssembly3{
    uint public count;
    function test() public returns(bool) {
        uint  a;
        assembly {
            a := count
            a := 10
        }
        return (count == 10);
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly4{
    uint public count;
    function test() public returns(bool) {
        uint  a;
        assembly {
            a := count
            a +:= 10
        }
        return (count == 10);
    }
}
