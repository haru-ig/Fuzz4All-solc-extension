pragma solidity ^0.8.0;

contract NewContract {
    function safe_get(address) public view returns (bool) {
        return true;
    }
}
contract NewContract2 is SemanticCheckMutated {}
contract NewContract3 is SemanticCheckMutated {
    function negate_literal_reverted(uint256) public {
        new NewContract3().safe_negate_literal();
    }
}
contract NewContract4 {
    function safe_negate_literal() public {


        unchecked {
            NewNewContract4().safe_negate_literal();
        }
    }
    function revert_if_true() public {
        emit log(1);
    }
}
contract NewNewContract4 is SemanticCheckMutated {
    function safe_negate_literal() public {
        emit log(4);
    }
}
contract RevertWithoutMessage is SemanticCheckMutated {
    function safe_get(address) public pure {
        revert();
    }
}
contract RevertWithMessage is SemanticCheckMutated {
    function safe_get(address) public view returns (bool) {
        return true;
    }
    function safe_negate_literal_reverted() public {
        emit log(1);
    }
}
contract SemanticCheckChangedByABI is SemanticCheckMutated {
    function safe_get(address)
        public
        view
        returns (bool)
    {
        return false;
    }
    function safe_negate_literal_v1()
        public
    {
        require(true);
    }
    function safe_negate_literal_v2()
        public
        onlyContractOwner
    {
        require(true);
    }
}
interface IERC1155 {
    function totalSupply(address owner) external view returns (uint256);
    function balanceOf(address owner, address tokenId)
        public
        view
        returns (uint256);
    function approve(address to, uint256 tokenId) external;
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;
    function approveAndCall(
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external;
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bool);
}
contract IERC165 is IERC1155 {}
