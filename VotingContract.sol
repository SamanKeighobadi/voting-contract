pragma solidity >=0.7.0 <0.9.0;

contract Voiting {
    address owener;
    uint256 CondidateCount;

    struct Condidate {
        uint256 id;
        string name;
        uint128 voteCount;
    }

    mapping(uint256 => Condidate) candidates;
    mapping(address => bool) voted;

    constructor() public {
        owener = msg.sender;
    }

    function addCandidate() public {}

    function vote(uint256 id) public {}

    function Result() public {}
}
