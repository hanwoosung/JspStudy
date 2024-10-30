package dao;

import dto.Member;

import java.util.List;

public interface IMemberDao {
    public boolean regMember(Member member);

    public Member getMember(int mno);

    public List<Member> getMemberList();

    public boolean modifyMember(Member member);

    public void deleteMember(int mno);
}
