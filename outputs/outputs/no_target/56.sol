pragma solidity ^0.8.0;
interface IERC223TokenReceiver {


    function safeTransferFrom(address _from, address _to, uint _value, bytes calldata _data) external returns (bool);


    function transferFrom(address _from, address _to, uint _value) external returns (bool);

    function approve(address _spender, uint _value) external returns (bool);
    function permit(address _owner, address _spender, uint _value, uint _ deadline, uint8 _v, bytes32 _r, bytes32 _s) external;
}
