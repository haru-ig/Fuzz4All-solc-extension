pragma solidity ^0.8.0;
interface IFunctionWithFallbackInterface {
    function callWithFallbackReturn ( bytes calldata ) external payable returns (bytes memory);
}
contract FunctionWithFallback {
    IFunctionWithFallbackInterface contractFunction;
    bytes32 _functionKey;
    uint256 _contractHeight;

    function initialize(uint256 contractHeight) public {

        _contractHeight = contractHeight;
    }

    function callWithFallbackReturn ( bytes calldata ) public payable returns (bytes memory) {

        _functionKey = keccak256 ( abi.encodePacked ( "callWithFallbackReturn(bytes)" ) );
        contractFunction = IFunctionWithFallbackInterface ( msg.sender );
        emitLog ( _functionKey );
        return contractFunction.callWithFallbackReturn ( abi.encode ( msg.value ) );
    }
    function emitLog ( bytes32 eventKey ) public view {
        uint256 contractHeight =
            abi.decode
            (
                keccak256 ( abi.encode ( address ( this ), _contractHeight ) ),
                ( uint256 memory )
            );
        emit Log ( eventKey, msg.sender, contractHeight );
    }
}
library Bytes {
    function toString ( bytes memory _b ) public pure returns ( string memory ) {
        return bytesToString ( _b );
    }

    function bytesToString ( bytes memory _b ) public pure returns ( string memory ) {
        if (_b.length < 1) return "";

        bytes memory tmp = new bytes ( _b.length );
        uint256 r;

        for (uint256 i = 0; i < _b.length; i ++) {
            r = _b[i];
            tmp[i] = byte ( ( uint ( r ) & 0xff ) > 127? 0 : r );
        }

        return string ( tmp );
    }
}
