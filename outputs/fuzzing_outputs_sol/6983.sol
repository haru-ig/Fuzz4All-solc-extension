pragma solidity ^0.8.0;
contract ReturnExample1{
    uint public value;
    function get() public view returns(uint) {
        return value;
    }
}
contract ReturnExample2{
    uint public value;
    uint public x;
    function get() public view returns(uint) {
        return value;
    return value;
    }
}
contract Caller{
    function method1() public view returns(bool, uint, address, uint8){return (false, 0, address(""), 0);  }
    function method2() public view returns(uint, bytes){return(0, "");}
    function method3() public view returns(uint, uint8){return(0, 0); }
    function method4() public view {
        function(uint8) f = function () public pure { };
        uint e = f();
    }
    function method5() public view returns(uint[]) { return ([1] ); }
    function method6() public view returns(int8, int8[4][4]){ return (0x00, [ 0xFF, 0xFF, 0xFF, 0xFF] ); }
    function method7() public view returns(address, uint8){ return (address(0x2312), 0x01 ); }
    function method8() public view returns(uint[]){return ([0x2312] ); }
    function method9() public view returns(int8, int16){ return (0x00, 0x1234); }
    function method10() public view returns(int8, address[]){ return (0x00, [ address(0x2134) ]); }
    function method11() public pure returns(bool){ return true ; }

    function fallback() external payable {
        return;
    }
}
