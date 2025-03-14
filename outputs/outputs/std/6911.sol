pragma solidity ^0.8.0;
contract Mutation_FunctionCaller5 {
    uint256[] memory _data;
    bytes memory data = "fakemodule" + hex"00";
    bytes memory data_out;
    bytes memory data_in;
    function get_data() public view returns(uint256[] memory) {
    	uint256[] memory _return;
    	_return = new uint256[](16);
    	for (uint256 i = 0; i < 16; i++) {
    		_return[i] = uint256(uint32(uint32(uint64() - i))));
    	}
        return _return;
    }
    function set_data(uint128[] memory _data) private {
        for (uint256 x; x < 6; x++) {
            uint256[] memory a = _data;
            bytes memory result;
            assembly {
              result := switch returndatacopy(0, 0, add(returndatasize(), x), data_out)
            }
             _data[x] = abi.decode(result, (uint128));
         }
        data_in = "fakemodule" + hex"00";
    }
    function set_data2() public view returns(uint256) {
        set_data(new uint128[](6));
        return uint256(uint32(uint32(uint64() + 5))));
    }
    function add_data() public view returns(uint256) {
        set_data(new uint128[](5));
    	set_data(new uint128[](17));
    }
    function get_data2() public view returns(bytes memory) {
         return data;
    }
}
