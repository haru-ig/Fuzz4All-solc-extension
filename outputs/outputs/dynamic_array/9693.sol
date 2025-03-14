pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
    uint[][] public semanticallyEquivalent1;
    uint[][] public semanticallyEquivalent2;
    uint[] public semanticallyEquivalent3;
    uint[] public semanticallyEquivalent4;
    uint public semanticallyEquivalent5;
    uint public semanticallyEquivalent6;
    uint public semanticallyEquivalent7;
    uint[][] public semanticallyEquivalent8;
    uint[][] public semanticallyEquivalent9;
    uint[][] public semanticallyEquivalent10;
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
contract MutatedBug {
    uint[][] public mutableSemanticallyEquivalent1;
    uint[][] public mutableSemanticallyEquivalent2;
    uint[] public mutableSemanticallyEquivalent3;
    uint[] public mutableSemanticallyEquivalent4;
    uint public mutableSemanticallyEquivalent5;
    uint public mutableSemanticallyEquivalent6;
    uint public mutableSemanticallyEquivalent7;
    uint[][] public mutableSemanticallyEquivalent8;
    uint[][] public mutableSemanticallyEquivalent9;
    uint[][] public mutableSemanticallyEquivalent10;
}
