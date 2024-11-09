package com.entity.vo;

import com.entity.ShiguongfangEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 施工方
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-04-28
 */
@TableName("shiguongfang")
public class ShiguongfangVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账户
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 施工方姓名
     */

    @TableField(value = "shiguongfang_name")
    private String shiguongfangName;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 身份证号
     */

    @TableField(value = "shiguongfang_id_number")
    private String shiguongfangIdNumber;


    /**
     * 手机号
     */

    @TableField(value = "shiguongfang_phone")
    private String shiguongfangPhone;


    /**
     * 照片
     */

    @TableField(value = "shiguongfang_photo")
    private String shiguongfangPhoto;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：施工方姓名
	 */
    public String getShiguongfangName() {
        return shiguongfangName;
    }


    /**
	 * 获取：施工方姓名
	 */

    public void setShiguongfangName(String shiguongfangName) {
        this.shiguongfangName = shiguongfangName;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：身份证号
	 */
    public String getShiguongfangIdNumber() {
        return shiguongfangIdNumber;
    }


    /**
	 * 获取：身份证号
	 */

    public void setShiguongfangIdNumber(String shiguongfangIdNumber) {
        this.shiguongfangIdNumber = shiguongfangIdNumber;
    }
    /**
	 * 设置：手机号
	 */
    public String getShiguongfangPhone() {
        return shiguongfangPhone;
    }


    /**
	 * 获取：手机号
	 */

    public void setShiguongfangPhone(String shiguongfangPhone) {
        this.shiguongfangPhone = shiguongfangPhone;
    }
    /**
	 * 设置：照片
	 */
    public String getShiguongfangPhoto() {
        return shiguongfangPhoto;
    }


    /**
	 * 获取：照片
	 */

    public void setShiguongfangPhoto(String shiguongfangPhoto) {
        this.shiguongfangPhoto = shiguongfangPhoto;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
