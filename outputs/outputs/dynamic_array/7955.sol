pragma solidity ^0.8.0;
library Test01{
}
library Test02{
    event log(uint);
}

pragma solidity ^0.8.0;
assembly {
    push 0x33
    push 0x12
    push 0xa
    push 0x1
    ret
}

pragma solidity ^0.8.0;
library Test08{
    function f1(IERC218(address(0x01)).approve(address(uint256(0x00)),1))public{
    }
}

pragma solidity ^0.8.0;
library Test09{
    function f1(address[] calldata _a) public{
    }
}

pragma solidity ^0.8.0;
library Test10{
    function f1(uint256[4] calldata _a) public{
    }
}


pragma solidity ^0.8.0;
library Test11{
    uint256 constant c=5;
    uint256 constant d=25;
    uint32 constant e=50000048;
    mapping (uint256 => string) public m;
    constructor(){
        m[c]="1";
        m[e] = uint2str(e);
    }
    function uint2str(uint256 n) internal view returns (string memory str) {
        if (n == 0) return "0";
        uint256 j = n;
        uint256 len;
        while (j >= 10) {
            j /= 10;
            len++;
        }
        bytes memory bstr = new bytes(len);
        while (j!= 0) {
            bstr[--len] = byte(uint8(48+j%10));
            j /= 10;
        }
        str = bytesToString(bstr);
    }
    return bytesToString(abi.encodePacked(
