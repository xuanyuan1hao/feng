package cc.zhuzhu8.blog.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2018-01-10.
 */
@Entity
@Table(name = "quark_options")
public class Options implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(unique = true, nullable = false,name = "option_key")
    private String optionKey;

    @Column(unique = true, nullable = false,name = "option_value")
    private String optionValue;

    @Column(unique = true, nullable = false,name = "option_desc")
    private String optionDesc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOptionKey() {
        return optionKey;
    }

    public void setOptionKey(String optionKey) {
        this.optionKey = optionKey;
    }

    public String getOptionValue() {
        return optionValue;
    }

    public void setOptionValue(String optionValue) {
        this.optionValue = optionValue;
    }

    public String getOptionDesc() {
        return optionDesc;
    }

    public void setOptionDesc(String optionDesc) {
        this.optionDesc = optionDesc;
    }

    @Override
    public String toString() {
        return "Options{" +
                "id=" + id +
                ", optionKey='" + optionKey + '\'' +
                ", optionValue='" + optionValue + '\'' +
                ", optionDesc='" + optionDesc + '\'' +
                '}';
    }
}
