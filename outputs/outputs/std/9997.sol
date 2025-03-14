pragma solidity ^0.8.0;
contract MutatedArrayExample {
    uint256 maxLength = 18;
    uint256 maxAge_address1 = 18;
    uint256 maxAge_address2 = 18;
    uint256 maxAge_value1 = 0;
    uint256 maxAge_value2 = 0;
    bool changed1 = false;
    bool changed2 = false;
    address[] addresses1;
    address[] addresses2;
    uint256[] values1;
    uint256[] values2;
    bool[] test1;
    bool[] test2;
    uint256 address1_maxAge_address1 = 18;
    uint256 address1_maxAge_address2 = 1;
    uint256 address2_maxAge_address1 = 1;
    uint256 address2_maxAge_address2 = 1;
    uint256 address1_maxAge_value1 = 0;
    uint256 address1_maxAge__value2 = 0;
    uint256 address2_maxAge_value1 = 0;
    uint256 address2_maxAge__value2 = 0;
    address[] mutable_addresses1;
    address[] mutable_addresses2;
    uint256[] mutable_values1;
    uint256[] mutable_values2;
    bool[] mutable_test1;
    bool[] mutable_test2;
    function changeAddress(uint aAddress) public {
        if (aAddress > addresses1.length)
        {
            addresses1.push(aAddress);
        }
    }
    function changeMaxAgeAddress(uint aAddress) public {
        if ((aAddress < addresses2.length) && (aAddress > maxAge_address1))
        {
            maxAge_address1 = aAddress;
            changed1 = true;
        }
        else if ((aAddress < address2_maxAge_address1 ) && (aAddress > maxAge_address2))
        {
            maxAge_address2 = aAddress;
            changed2 = true;
        }
    }
    function changeMaxAgeValue(uint aAddress) public returns(uint256 a) {
        if (aAddress <= maxAge_address1)
        {
            maxAge_value1 = maxAge_value1;
            changed1 = true;
            return aAddress;
        }
        else if (aAddress > maxAge_address1)
        {
            if (aAddress <= maxAge_address2)
            {
                maxAge_value2 = maxAge_value2;
                changed2 = true;
                return aAddress;
            }
            else
            {
                return 255;
            }
        }
        else
        {
            return 255;
        }
    }
    function main() public {
