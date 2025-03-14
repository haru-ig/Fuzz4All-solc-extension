pragma solidity ^0.8.0;

contract CallData {
    struct Array {
        bool _flag;
        uint8 _value;
        uint20 _value20;
        address[] _data;
    }

    Array a;
}

pragma solidity ^0.8.0;

contract Simple {
    constructor(address[] memory addresses) {
      a.data = new address[](1);
      a.data[0] = addresses[0];
    }
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

pragma solidity ^0.8.0;

abstract contract ERC165 is IERC165 {

    function supportsInterface(bytes4 interfaceID) public view virtual override returns (bool) {
        return interfaceID == type(IERC165).interfaceID;
    }
}


pragma solidity ^0.8.0;

interface IERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}


pragma solidity ^0.8.0;

library ERC165 {
    using ERC165 for address;


    function is ImplementsInterface(address account, bytes4 interfaceID) internal view returns (bool) {
        return account.isContract() && IERC165(account).supportsInterface(interfaceID);
    }
}

pragma solidity ^0.8.0;


library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and
