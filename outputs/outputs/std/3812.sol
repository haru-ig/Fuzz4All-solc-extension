pragma solidity ^0.8.0;
contract Array {
    mapping(uint256 => uint256) public array;
    uint256 constant size = 10;
    function return_max() public view returns(uint256) {
      return array[size-1];
    }
    function array_check1() public {
      array[2] = Convert.from_address(address(this));
      array[0] = Convert.from_address(Math.min(address(this), address(this)));
      array[0] = Convert.from_address(Math.max(address(this), address(this)));
    }
    function array_check2() public {
      array[6] = Convert.from_uint256(Convert.from_bytes32(Random.random_bytes(32)));
      uint256 a =  Convert.from_uint256(Convert.from_bytes32(Random.random_bytes(32)));
      uint256 b =  Convert.from_uint256(Convert.from_bytes32(Random.random_bytes(32)));
      array[0] = Convert.from_uint256(Convert.from_bytes32(Random.random_bytes(32)));
    }
    function array_check3() public {
      uint256 addr_return = Convert.from_address(address(this));
    }
    function array_check4() public {
      uint256 [] memory array = new uint256[](21);
    }
}
contract Convert {
    using Address for address;

    function to_uint256(bytes memory from) public pure returns (uint256) {
        bytes memory buff = new bytes(32);

        for(uint i=0; i<32; i++)
            buff[i] = from[i];
        return abi.decode(buff, (uint256));
    }

    function to_address(bytes memory from) public pure returns (address) {
        bytes memory buff = new bytes(40);

        for(uint i=32; i<64; i++)
            buff[i] = from[i-32];
        return address(abi.decode(buff, (uint256)));
    }

    function from_address(address from) public pure returns (address) {
        return from;
    }

    function get_uint256_from_bytes(bytes memory from) public pure returns (uint256) {
        bytes memory buff = new bytes(24);


        for(uint i=24; i<48; i++)
         buff[i] = from[i-24];
        return abi.decode(buff, (uint256));
    }
    function from_uint256(uint256 from) public pure returns (uint256) {
        return from;
    }
    function from_
