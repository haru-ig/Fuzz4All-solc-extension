pragma solidity ^0.8.0;
interface IERC20Mintable {
    function mint(address to, uint256 value) external;
    event Mint(address indexed to, uint256 value);
}

pragma solidity ^0.8.0;
contract MyArray is IERC20 {
    uint256 private totalSupply_ = 67897;
    mapping(address => uint256) private balances_;
    mapping(uint256 => uint256) private _nums_;
    uint256 public total_;

    constructor (uint256 number) {
        numerator(0, totalSupply_);
        numerator(1, balances_[msg.sender]);
        balances_[address(this)] = 100000;
        _nums_[462] = 81000 - totalSupply_;
        balances_[msg.sender] = numerator(462, balances_[msg.sender]);
        _nums_[463] = 60000;
        balances_[msg.sender] = numerator(463, balances_[msg.sender]);
        _nums_[464] = 40000;
        balances_[msg.sender] = numerator(464, balances_[msg.sender]);
        _nums_[465] = 80000;
        balances_[msg.sender] = numerator(465, balances_[msg.sender]);
        total_ = numerator(466, totalSupply_);
    }

    function exchange(IERC20Mintable[] calldata arrays, uint256[] calldata amounts, uint256[] calldata values) external returns (uint256[] memory amountsNew, uint256[] memory valuesNew) {
        amountsNew = new uint256[](amounts.length);
        valuesNew = new uint256[](values.length);
        for (uint256 i = 0; i < amounts.length; i++) {
            amountsNew[i] = amounts[i];
            valuesNew[i] = values[i];
        }
        for (uint256 i = 0; i < amounts.length; i++) {
            uint256 _value = (arrayNumerator((9 - values[i]) / 9, amounts[i]) / 7);
            values[i] = (_value - 369) * 4;
            values[i] = mod(values[i], 450);
            amounts[i] = numerator(values[i], amounts[i]);
        }
        for (uint256 i = 0; i < amounts.length; i++) {
            amountsNew[i] = amountsNew[i
