pragma solidity ^0.8.0;
interface IERC20 {
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    function name() public view virtual returns (string memory);
    function symbol() public view virtual returns (string memory);
    function decimals() public view virtual returns (uint8);
    function transfer(address recipient, uint256 amount) public returns (bool);
    function tryTransfer(address recipient, uint256 amount) public returns (bool);
    function approve(address spender, uint256 amount) public returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool);
    function allowance(address owner, address spender) public view returns (uint256);
    function totalSupply() public view returns (uint256);
}
contract IArrayViewAbi {
    function myStaticArray() public view returns (int[19] memory);
    function myDynamicArray() public view returns (int256[19] memory);
}
contract MyArrayViewAbi is IArrayViewAbi {
    function myStaticArray() public view returns (int[19] memory) {
        int[] memory myArray = new int[](19);
        for (uint i = 0; i < 1; i++) { myArray[i] = 0; }
        return myArray;
    }
    function myDynamicArray() public view returns (int256[19] memory) {
        int256[] memory myArray = new int256[](19);
        for (uint i = 0; i < 1; i++) { myArray[i] = 0; }
        return myArray;
    }
}
contract MyArrayViewAbi_test {
    function staticArrayView(IArrayViewAbi _impl) public {
        _impl.myStaticArray();
        _impl.myDynamicArray();
    }
}
