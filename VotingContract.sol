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

    function addCandidate(string memory _name) public returns(string memory) {
       require(msg.sender == owener,'Only owner can add candidate');
       CondidateCount++;
       candidates[CondidateCount] =  Condidate(CondidateCount,_name,0);
       return 'Candidate added';
    }

    function vote(uint id) public returns(string memory) {
        require(id<= CondidateCount && id > 0,' Candidate not found');
        require(!voted[msg.sender],'You have already voted');
        candidates[id].voteCount++;
        voted[msg.sender] = true;
        return "Voted";
    }

    function Result() public returns(string memory) {}
}