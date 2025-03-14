pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample74 {
    function () external {

        assembly {

            mstore(add(10, 2), mload(add(9, 1)))
        }
    }
}





pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    function doSomething() public {
        assembly {

            mstore(0x0, 0xC1E883A74845BF4492D6934A2A1537F8D74E48321F2BE4CFD990CB470AF828D93553E4958D796985FBADA6D50DC2F98549AB651EBA02733265CE576598F39)

            mstore(42, 0x1000)

            mstore(42, 0x2000)
        }
    }
}
