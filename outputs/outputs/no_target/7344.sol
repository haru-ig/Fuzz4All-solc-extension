pragma solidity ^0.8.0;
contract RevertOldAbiCoder {
    function toBig() internal pure returns (uint) {

        assembly {

            let b := mload(0x40)
            setMload(0x40, add(b, 0x20))
            return mload(b)
        }
    }
}

pragma solidity ^0.8.0;
interface RevertOldAbiCoderInterface {
    function toBig() external view returns (uint);
}

pragma solidity ^0.8.0;
interface RevertOldAbiCoderInterface {

    function toBig() external view returns (uint);
}
