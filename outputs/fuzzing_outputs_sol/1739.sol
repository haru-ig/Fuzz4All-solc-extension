pragma solidity ^0.8.0;
interface IPullableFallbackInterface {

    function receivePayment( uint amount ) external payable;
}
contract Caller {
    event Withdrawal(address _to);
    IPullableFallbackInterface payable fallbackInterface;
    uint payable amount;
    address payable beneficiary;
}

pragma solidity ^0.8.0;
interface IPullableFallbackMutated {

    function contractWithFallbackReturn ( bytes calldata ) public returns (bytes memory);
    function contractWithFallback( bytes calldata memory ) public payable returns (bytes memory);
}
contract FunctionWithFallback {
    function callWithFallbackReturn ( bytes memory ) public payable returns (bytes memory);
    function callWithFallback ( bytes memory ) public payable returns (bytes memory);
}
contract FunctionWithFallbackMutated {
    struct CallData {
        bytes memory data;
        bytes memory returnedData;
        bool isSuccess;
    }
    mapping(address => CallData) callData;
    address payable beneficiary;

    fallback (bytes memory) external payable {
        callData[ msg.sender ].isSuccess = false;
        callData[ msg.sender ].returnedData =
            abi.encodeWithSelector (IPullableFallbackInterface.fallbackSelector(), msg.sender, fallbackInterface);
    }
    receive () external payable {
        address _to = msg.sender;
        uint _size = callData[ _to ].returnedData.length;
        bytes storage _data = viewCallDataArray ( _to );
        _data[ _size-2 : _size ] = callData[ _to ].returnedData;
        callData[ _to ].isSuccess = true;
    }


    function viewCallDataArray ( address _to ) public view returns ( bytes memory ){
        bytes memory data = memoryToArray ( _to );
        _to.call{ value: data[0] }{ data : _data[ 1 : _data.length ] };
        return data;
    }


    function memoryToArray ( address _to ) public view returns ( bytes memory ){
        _to.call{ value: abi.encodePacked ( blockhash ( block.timestamp - 2 )) }{ data : _data };
        return _data;
    }
}

pragma solidity ^0.8.0;
interface ICallReturnFunction {
    function callWithFallbackReturn ( bytes calldata ) public payable returns (bytes memory);
}
contract CallReturnsFunction {
    uint payable amount;

    function withdrawEther() public payable returns ( bytes
