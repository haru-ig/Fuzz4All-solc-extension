pragma solidity ^0.8.0;
library BytesLib { function str2bytes(string memory s) internal pure returns (bytes memory) { bytes memory ret; bytes memory tmp; uint len; uint mask; bytes1 b; bytes1[] storage barr; assembly { mstore(0x40, len) } for (uint i = 0; i < s.length; i ++) { switch(s[i]) { case 0x08: memmove(0x00, add(0x40, i), 1); s.length = i; s.offset += 1; { s.length } break; case 0x00... 0x3b: ret[i] = s[i + 1]; i + 1; break; case 0x40... 0x5a: barr = barr?? new bytes1[](i); barr[i] = s[i + 15]; s.length = i; s.offset += 5; { s.length } break; case 0x5b... 0x60: len = s.length; for (i += 0x1a; len > i; i += 0x20) { mask = 0; { i += 0x20 } for (; i < len; i ++) { b = bytes1(0, mload(add(0x5b, len)))) { mask = add(mask, bitAnd(b, 0x1)); len = sub(len, 0x1); } } } tmp[i] = bitOr(mask, 0x10); } i += 0x20; { i } ret = tmp; } }
}

pragma solidity ^0.8.4;
contract Ownable { uint8 _owner; constructor () internal { _owner = msg.sender; } function owner() public view returns (address) { return _owner; } function renounceOwnership() public onlyOwner { selfdestruct
