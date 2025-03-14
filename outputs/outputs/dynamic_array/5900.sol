pragma solidity ^0.8.0;
contract Test1865W1 {
    uint16 b;
    function set(uint16[1] memory x_set) public {
        b = x_set[0];
    }
    function set2(uint16[2] memory x_set) public {
        x_set[1] = 16;
    }
    function get() public view returns (uint16[2] memory) {
        uint16[1] memory a_get;
        uint16[10] memory b_get;
        a_get[0] = x_set[0];
        b_get[0] = b;
        return a_get;
    }
}

pragma solidity ^0.8.0;
contract Test1865W2 {
    uint16[30] x = [0x0];
    uint256[] arr;
    function set(uint16[2] memory x_set) public {
        arr = new uint256[](x_set[1])();
        for(uint i = 0; i < x_set[1]; i++){
            x[x_set[1]*i+1-1] = 2 * x_set[1] + i;
        }
    }
    function get() public view returns (uint256[]) {
        uint256[] memory a_get;
        for(uint i = 1; i <= x_set[1]; ++i){
            a_get[i-1] = x[x_set[1]*i-1]+1;
        }
        return a_get;
    }
}

pragma solidity ^0.8.0;
contract Test1865W3 {
    bytes32[7] x = [keccak256("0xf82652fa587752a9f12c562be097603fa97748b4db3387
