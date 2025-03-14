pragma solidity ^0.8.0;
contract Unsafe2C {
    Unsafe2B b;
    uint8 c;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe2D {
    Unsafe2D b;
    uint8 a;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe2E {


    function run() public {
        test();
    }

    function test() public {
        emitLog0();
        emitLog1();
    }
    event log0(uint256 _log0);
    event log1(uint256 _log1);
    function emitLog0() public {

        emit log0(address(this));
    }
    function emitLog1() public {

        emit log1(address(this));
    }
}
interface IMockContract {
    uint256 public constant value;
    function returnInt() external returns(uint);
    function returnUint() external returns(uint);
    function returnBoolean() external returns(bool);
}

pragma solidity ^0.8.0;
contract Test {

    event Event(uint256 _someData);

    function test() public {
        (uint x, uint y) = (100, 10);
        Event(x);
        Event(y);
    }

    function test1() public {
        uint x;


        x = returnInt();
        uint bts;
        bts = int2b(uint2int(x));
    }


    function wrongNumber() external {
        uint x;
        if (int2uint(x)>0) {
            uint bts;
            bts = int2b(uint2int(x));
        }
    }
}

contract TestInternal {

    function internalTest() internal{
        uint x = uint2int(10);

        require(x >= 10);
    }
}

contract TestExternal {
    function test() public {
        (uint x, uint y) = (100, 10);
        (uint z, uint w) = (20,3);
        uint bts = int2b(uint2int(
