pragma solidity ^0.8.0;
contract Mutator34
{
    struct UserRecord
    {
        uint256 age;

        bytes hash;

        string first_name;

        string middle_name;

        string last_name;
    }

    UserRecord[] public userRecordArray;

    uint256 public userCount;

    bytes32 public salt;

    mapping(uint256 => UserRecord) public userHistory;

    uint256 lastHistoryIndex;

function testMutated() public
    {
    uint256 lastHistoryIndex0 = lastHistoryIndex;

    lastHistoryIndex = ((lastHistoryIndex * (lastHistoryIndex >> 22)) + ((lastHistoryIndex << 17) & ((lastHistoryIndex << 5) |0xffff000055662c4f)));

    require(lastHistoryIndex >= lastHistoryIndex0);
    }

function addUser(
    uint256 user_id,
    bytes32 hash,
    bytes memory first_name,
    bytes memory middle_name,
    bytes memory last_name)
public
        {
        UserRecord storage UserRecord0 = userRecordArray[userCount];

        userCount += 1;

        UserRecord0.age = (42);

        UserRecord0.hash = (hash);

        UserRecord0.first_name = (first_name);

        UserRecord0.middle_name = (middle_name);

        UserRecord0.last_name = (last_name);

        userHistory[user_id] = UserRecord0;
    }

function getHistory() public view returns (UserRecord[] memory userHistoryArray)
{


uint256 length0 = userCount;

 uint256[] memory indexes0 = generateIndexArray(length0);

for (uint256 i0 = 0; i0 < length; i0 += 1)
 {
        uint256 idx0;

        idx0 = indexes0[i0];

        UserRecord0 = userHistory[idx0];

        userHistoryArray[i0] = UserRecord0;

}
return
