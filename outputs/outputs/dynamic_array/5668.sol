pragma solidity ^0.8.0;
contract Test71 {
    function f() public {
        a[34] -= 1;
    }
    mapping (int => int) private a;
}

pragma solidity ^0.8.0;
contract Test72 {
    mapping (int => int) public a;
    function f() public {
        a[34] += 1;
    }
    mapping (int => int) private a;
}



contract ERC721  is IERC721 {

    enum State {
        New,
        Minting,
        Paused,
        Burning,
        Deleted
    }

    string private name;
    string private symbol;
    uint8 private decimals;

    uint256[] private tokens;

    uint256 private tokenId_;

    uint256 private totalAccounts_;

    bool private paused_;


    bytes1 private constant DEFAULT_ADMIN_ROLE = 0x01;



    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
       decimals = 18;

        tokenId_ = 0;
        totalAccounts_("0");
    }

    modifier onlyPayloadSize(uint256 _size) {
        require(msg.data.length >= _size + 4);
        _;
    }
    function name() public view returns (string memory) {
        return name;
    }

    function symbol() public view returns (string memory) {
        return symbol;
    }

    function decimals() public view returns (uint8) {
        return decimals;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return tokenIdOf(_owner, State.New);
    }

    function tokenIds(uint256 _index) public view returns (uint256) {
        return tokens[_index];
    }

    function update() public {
        totalAccounts_ += 1;
    }

     function tokenIdOf(address _owner_, State _state) public view returns (uint256) {
        uint8 length;
        bytes1[16] storage roles;
        address[16] storage holders;


        if (_state == State.New || _state == State.Burning) {
            length = 3;
        } else {
            length =
