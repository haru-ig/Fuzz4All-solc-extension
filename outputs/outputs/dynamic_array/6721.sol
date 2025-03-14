pragma solidity ^0.8.0;
contract T10FC_call_data_array3 {
    address empty;
    uint public empty2;
    function add() public payable {
        address[] memory addrs = new address[](3);
        addrs[0] = empty;
        for (uint i = 1; i <= 3; i++) addresses[i] = empty;
    }
}

pragma solidity ^0.8.0;
contract T10FC1268_preloaded_array3 {
    uint public empty123;
    uint public empty456;
    uint8 constant e = 10;
    bytes public bytesempty = new bytes(5);
    bytes16 constant bytes1 = 7;
    bytes1 constant bytes2 = 8;
    bytes45 constant bytes3 = 123;
    bytes21 constant bytes4 = 654;
    bytes32 constant bytes5 = 20987;
    bytes432 constant bytes6 = 1589712;
    bytes512 constant bytes7 = 98765;
    bytes568 constant bytes8 = 8456564964587656;
    bytes584967237558881461558430085939876776880999999;
    bytes604426195169293961369561940753;
}
