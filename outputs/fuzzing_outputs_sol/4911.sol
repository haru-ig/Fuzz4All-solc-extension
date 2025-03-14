pragma solidity ^0.8.0;
contract ModBase {
    function get() public view returns(uint) {
        return 5;
    }
    function f() public payable {
        uint _dummy = get();
        _dummy = 2;
    }
}
contract ModPayableBase {
    function get() public view returns(uint) {
        return 5;
    }
    function f() public payable {
        uint _dummy = get();
        _dummy = 2;
    }
}
contract ModNoFallback {
    function get() public view returns(uint) {
        return 5;
    }
    function f() public payable {
        uint _dummy = get();
        _dummy = 2;
    }
}
contract FallbackCallReturn {
    function get() public view returns(uint){
        return 5;
    }
}
contract CallF {
    function f() public {
        contract f{
            function test() public returns(uint){
                return get();
            }
            function get() public view returns(uint) {
                return 0;
            }
        }
        uint _x = f.test();
        _x = 0;
    }
}
