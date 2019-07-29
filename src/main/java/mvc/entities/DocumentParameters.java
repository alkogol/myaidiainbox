package mvc.entities;

import java.util.Date;

/**
 * Created by anmi0217 on 26/7/2019.
 */
public class DocumentParameters {

    private long documentId;
    private long attributeId;
    private String value;
    private Date modified;
    private Date created;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getModified() {
        return modified;
    }

    public void setModified(Date modified) {
        this.modified = modified;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }
}
