pragma solidity ^0.8.0;
contract Ownable
{
        address _owner;
        constructor() {
                _owner = msg.sender;
        }

        function owner() public view returns (address) {
                return _owner;
        }

        modifier onlyOwner() {
                require(
                    _owner == msg.sender,
                    "Ownable: caller is not the owner"
                );
                _;
        }
}
contract FixedPointNumbers
{
        struct Token
{
        uint256 amount;
        uint256 _decimals;
        }

        struct TokenData
{
        uint256 _totalSupply;
        mapping(address => Token) _tokens;
        }

        function convertTokenAmountToString(Token[] memory tokens, uint256 _amount,
        uint256 _decimals, string memory _format) internal pure returns (string memory)
        {
                uint256 _amountToDisplay;
                for(uint256 i = 0; i < tokens.length; i++){
                _amountToDisplay += tokens[i].amount;
                }

                if(tokens[0]._decimals > 0)
                {
                        _amountToDisplay = displayAmount(tokens[0].amount/_amountToDisplay,_decimals);
                }

                return string(abi.encodePacked(_amountToDisplay, TokenData.tokenNames(_decimals), _format));
        }

        function displayAmount(uint256 _amount, uint256 _decimals) internal pure returns (uint256)
        {
                require(_decimals < 160);

                uint256 j = 10 ** uint256(_decimals);
                return uint256(_amount * j) / j;
        }

        function TokenData.tokenNames(uint256 _decimals) internal pure returns (string memory)
        {
                return "t<PASSWORD>";
        }
    }




    contract ERC20Mintable
{



        function mint(address _to, uint256 _amount) public returns (bool);
}
/* Please create a program which allows two addresses to exchange funds using 2^128 (which is approximately 128M tokens) and a fee, which can be up to 2^128
