pragma solidity ^0.8.0;
contract ERC165Example {
    function supportsInterface(bytes4 interfaceId) external view virtual returns (bool);
}
contract MyERC165Example is ERC165Example {
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == bytes4(keccak256("supportsInterface(bytes4)"));
    }
}
interface IMutatedERC165Example {
    function supportsInterface(bytes4 interfaceId) external;
}
interface ISolidityAssemblyExample {
    function supportsInterface(bytes4 interfaceId) external;
}

pragma solidity ^0.8.0;
contract MyERC165Application {

    function supportsInterface(bytes4 interfaceId) external pure virtual returns (bool);
}
contract TestExampleApplication is MyERC165Application {  }
contract SolidityAssemblyExample {
    MyERC165Example public MyERC165;
    ISolidityAssemblyExample public MySolidityAssembly;
    constructor(address _MyERC165Address, address _MySolidityAssemblyAddress) public {
        require(_MyERC165Address!= address(0), "Invalid address");
        require(_MyERC165Address.isContract());
        MyERC165 = IMutatedERC165Example(_MyERC165Address);
        MySolidityAssembly = IMutatedSolidityAssemblyExample(_MySolidityAssemblyAddress);
    }
    function a(uint Z) public {
        uint Z_ = Z;
        assembly {
            MyERC165.supportsInterface(0x01ffc9a7));
            MySolidityAssembly.supportsInterface(0x01ffc9a7));
        }
        require(MySolidityAssemblyExample.supportsInterface(0x01ffc9a7));
        MyERC165Example.supportsInterface(0x01ffc9a7); /* This is same.
