pragma solidity ^0.8.0;
contract MutatedContactsExample178 {
    bytes32 name;
}









pragma solidity >= 0.7.0 <0.9.0;
assembly {
    pragma experimental ABIEncoderV2;


    function _return(bytes memory data) private pure returns (bytes memory) {
        returndatacopy(0x40,0x14,data);
        return0x14;
    }


    function return(bytes memory data) private pure {
        returndatacopy(0x40,0x14,data);
        return0x14;
    }


    function returnData() public view returns (bytes memory) {
        returndatacopy(0x40,0x14,abi.encodeWithSelector(this.sol_returnData));
    }

    function sol_returnData() public view returns (bytes memory) {
        returndatacopy(0x40,0x14,"test");
        return0x14;
    }
}
