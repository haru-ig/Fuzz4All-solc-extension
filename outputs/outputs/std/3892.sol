pragma solidity ^0.8.0;
contract ArrayMod
{

    uint256 constant floatPrecision = 10 ** 12 * 10 ** 12;

    address tokenAddress;

    function ArrayMod(address _tokenAddress)
    {
        tokenAddress = _tokenAddress;
    }

    function setTokenAddress(address _tokenAddress) public
    {
        tokenAddress = _tokenAddress;
    }

    function setTokenAddress(address _newValue) public
    {
        address prevTokenAddress = tokenAddress;
        tokenAddress = _newValue;
    }


    function minimum (uint256[] memory arr) public
    {
        uint256 minValue;
        for (uint index = 0; index < arr.length; index++)
        {
            if (arr[index] < minValue)
            {
                minValue = arr[index];
            }
        }

        return minValue;
    }


    function maximum (uint256[] memory arr) public
    {
        uint256 maxValue;
        for (uint index = 0; index < arr.length; index++)
        {
            if (arr[index] > maxValue)
            {
                maxValue = arr[index];
            }
        }

        return maxValue;
    }


    function sum (uint256[] memory arr) public
    {
        uint256 sum = 0;
        for (uint index = 0; index < arr.length; index++)
        {
            sum += arr[index];
        }

        return sum;
    }


    function getArrayAddress(uint256[] memory arr) public
    {
        for (uint index = 0; index < arr.length; index++)
        {
            if (address(arr[index]) == address(0))
            {
                return address(0);
            }
        }

        return address(arr);
    }


    function getRandomNumber(uint256 minValue, uint256 maxValue) public view returns (uint256)
    {
        uint256 rand = uint256(keccak256(abi.encodePacked(blockhash(uint8(0)), block.difficulty, block.timestamp, block.number)));
        rand = (rand * 2 ** 256) % uint256((maxValue - minValue + 1));
        return minValue + rand;
    }


    function getRandomBytes (uint256 length) public
    {
        try (uint256[] memory randomBytes)
        {
            for (uint index = 0; index < length; index++)
            {
                randomBytes[index] = getRandomNumber(0, 255);
            }

            return randomBytes;
        }
    }
}
