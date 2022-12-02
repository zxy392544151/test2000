package com.zxy.oe.biz;

import com.zxy.oe.bean.Employee;
import com.zxy.oe.bean.Outbox;
import com.zxy.oe.mapper.EmployeeMapper;
import com.zxy.oe.mapper.OutBoxMapper;
import com.zxy.oe.util.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class OutBoxBiz {

    public List<Outbox> getLetterByEmpId(long id){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
        List<Outbox> outboxes = mapper.selectLetterByEmpId(id+"");
        outboxes.forEach(outbox -> {
            Employee employee = employeeMapper.selectById(outbox.getSenderId());
            outbox.setEmployee(employee);
        });
        sqlSession.close();
        return outboxes;
    }
    public Integer getLetterByEmpIdUnRead(long id){
        AtomicReference<Integer> count = new AtomicReference<>(0);
        List<Outbox> outboxes = getLetterByEmpId(id);
        outboxes.forEach(outbox -> {
            if(outbox.getChecked() == 0){
                count.updateAndGet(v -> v + 1);
            }
        });
        return count.get();
    }

    public Outbox getLetterById(long Lid,long id){
        List<Outbox> outboxes = getLetterByEmpId(id);
        for (Outbox outbox : outboxes) {
            if (outbox.getId() == Lid) {
                return outbox;
            }
        }
        return null;
    }

    public int updateChecked(long Lid){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        int count = mapper.updateChecked(Lid + "");
        sqlSession.commit();
        sqlSession.close();

        return count;
    }

    public int deleteLetter(long Lid){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        int count = mapper.deleteLetter(Lid + "");
        sqlSession.commit();
        sqlSession.close();
        return count;
    }

    public  int addLetter(String title,String content,String sendId,String receiveId){
        SqlSession sqlSession = SqlSessionUtil.openSession();
        OutBoxMapper mapper = sqlSession.getMapper(OutBoxMapper.class);
        int count = mapper.insertLetter(title, content, receiveId, sendId);
        sqlSession.commit();
        sqlSession.close();
        return count;
    }


}
