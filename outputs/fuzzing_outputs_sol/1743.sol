pragma solidity ^0.8.0;
interface IFunctionWithFallbackMut {
    function callWithFallbackReturn ( bytes calldata ) external payable returns (bytes memory);
    function callWithFallbackReturnZero( bytes calldata ) external returns (bytes memory) { require ( msg.value == 0 );}
}
contract TestCaller {
    function modifyValue() public payable {
        uint256 x = 35;
        uint256 a = (uint256 (x) * 20) / (x % 8);
    }

    function withdrawEther() public payable {
        IFunctionWithFallbackMut ( IFunctionWithFallbackMut( msg.sender ) ).callWithFallbackReturn ( abi.encode ( 50 * a ) );
    }
}

pragma solidity ^0.8.0;
interface IFunctionWithFallbackMutMut {
    function callWithFallbackReturn ( bytes calldata ) external payable returns (bytes memory);
    function sendValueBackFromMod(uint256 value) external returns (bool);
}
contract TestCaller {
    constructor() public {
        IFunctionWithFallbackMutMut ( IFunctionWithFallbackMutMut ( TestCaller () ).modifyValue() ).callWithFallbackReturn ( abi.encode ( 50 * a ) );
    }

    function withdrawEther() public payable {
        IFunctionWithFallbackMutMut ( IFunctionWithFallbackMutMut ( TestCaller () ).sendValueBackFromMod ( 50 * a ) ).callWithFallbackReturn ( abi.encode ( 2000000 * a ) );
    }
}


contract Test {
    function testCaller() public {
        uint256 x;
        x = 88;
        TestCaller t = new TestCaller ();
        TestCaller.withdrawEther ();
        TestCaller.modifyValue ();
        TestCaller.sendValueBackFromMod ( x );
    }


}
