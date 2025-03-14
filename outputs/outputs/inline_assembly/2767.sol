pragma solidity ^0.8.0;
contract A {
    uint alphabet;

    uint names;
    address operator;
    uint namelength;

    function A() {
        alphabet = 0x1;
        names = 0x2;
        namelength = 0x3;
    }

    function nameTransfer() public {
        address addr = msg.sender;
        uint256 newName = names;
        uint namelen = namelength;
        namelength = newName.add(namelen);
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes memory signedMsg = abi.encode(prefix, msg.sig);
        bytes32 msgHash = ecrecover(
            hashKeccak256(
                abi.encodePacked("\x19Ethereum Signed Message:\n32", signedMsg)
            ),
            sig
        );
        name = new string(abi.encodePacked(alphabet, newName, namelen, address(this), msg.sig, namelen, namelen, msgHash, names, names, 0));
    }

    function ecrecover(
        bytes32 hash,
        bytes memory sig
    ) public view returns (address addr) {
        uint8 i;
        assembly {
            mstore(sig, mload(sig))
            let n     := extcodehash
            let r     := mload(add(sig, 32))
            let s     := mload(add(sig, 64))

            let e96 := and(s, 0x7fff)
            let e32 := and(or(e96, sgt(e96, 0)))
            let e16 := and(or(e32, sgt(e32, 0)))
            let e0  := not(or(e16, e32, e96))

            i := and(r, 0x3fff)
            addr := or(e0, mul(i, mload(and(n, 0x7fff))))
        }
    }
}
