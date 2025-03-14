pragma solidity ^0.8.0;
interface MinterInterface {
  function mint() external view;
  function setOwner(address _owner) external;
}


pragma solidity ^0.8.0;
contract Token {
    address private _owner;

    constructor () {
      _transferOwnership(_msgSender());
    }




    function transferFrom(
        address from,
        address to,
        uint256[] memory ids
    ) public virtual {
        for (uint256 i = 0; i < ids.length; i++) _safeTransferFrom(from, to, ids[i]);
        require(
            _checkIsApprovedOrOwner(_msgSender(), to, ids),
            "Token: transfer caller is not owner nor approved"
        );
    }

    function _transferFrom(
        address from,
        address to,
        uint256 id
    ) private {
        _safeTransferFrom(from, to, uint160(uint256(uint160(uint256(id))))));
    }

    function _safeTransferFrom(
        address from,
        address to,
        uint256 id
    ) private {
        uint160 balanceFrom = balanceOf(from, id).toUint160();
        uint160 balanceTo = balanceOf(to, uint256(uint160(uint256(uint160(id)))))).toUint160();
        require(
            balanceFrom.sub(1) >= balanceTo,
            "Token: transfer amount exceeds balance"
        );
        _doSafeTransferFrom(from, to, id);
    }


    function approveAndCall(address to, uint256[] memory ids, bytes memory data) public virtual {
        for (uint256 i = 0; i < ids.length; i++) _safeApproveAndCall(to, ids[i], data);
    }

    function _safeApproveAndCall(address to, uint256 id, bytes memory data) private {
        require(
            _msgSender() == ApproveAndCallOperator(to).operator() ||
                isApprovedForAll(to, _msgSender()),
            "Approve and call operator error"
        );
        _doSafeApproveAndCall(to, id, data);
    }

    function _doSafeApproveAndCall(address to, uint256 id, bytes memory data) private {
        safeTransferFrom(to, id, data);
    }

    function safeTransferFrom(
        address from,
        uint256 id,
        bytes memory data
    ) private {
