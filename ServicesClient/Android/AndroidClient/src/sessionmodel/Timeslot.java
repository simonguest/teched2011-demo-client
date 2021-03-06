/**
 * Copyright 2005-2010 Noelios Technologies.
 * 
 * The contents of this file are subject to the terms of one of the following
 * open source licenses: LGPL 3.0 or LGPL 2.1 or CDDL 1.0 or EPL 1.0 (the
 * "Licenses"). You can select the license that you prefer but you may not use
 * this file except in compliance with one of these Licenses.
 * 
 * You can obtain a copy of the LGPL 3.0 license at
 * http://www.opensource.org/licenses/lgpl-3.0.html
 * 
 * You can obtain a copy of the LGPL 2.1 license at
 * http://www.opensource.org/licenses/lgpl-2.1.php
 * 
 * You can obtain a copy of the CDDL 1.0 license at
 * http://www.opensource.org/licenses/cddl1.php
 * 
 * You can obtain a copy of the EPL 1.0 license at
 * http://www.opensource.org/licenses/eclipse-1.0.php
 * 
 * See the Licenses for the specific language governing permissions and
 * limitations under the Licenses.
 * 
 * Alternatively, you can obtain a royalty free commercial license with less
 * limitations, transferable or non-transferable, directly at
 * http://www.noelios.com/products/restlet-engine
 * 
 * Restlet is a registered trademark of Noelios Technologies.
 */

package sessionmodel;


import java.util.Date;
import java.util.List;
import sessionmodel.Session;

/**
* Generated by the generator tool for the OData extension for the Restlet framework.<br>
*
* @see <a href="http://sguest01/TRMobile/Services/ODATA.svc/$metadata">Metadata of the target OData service</a>
*
*/
public class Timeslot {

    private Date end;
    private int id;
    private String name;
    private Date start;
    private List<Session> sessions;

    /**
     * Constructor without parameter.
     * 
     */
    public Timeslot() {
        super();
    }

    /**
     * Constructor.
     * 
     * @param id
     *            The identifiant value of the entity.
     */
    public Timeslot(int id) {
        this();
        this.id = id;
    }

   /**
    * Returns the value of the "end" attribute.
    *
    * @return The value of the "end" attribute.
    */
   public Date getEnd() {
      return end;
   }
   /**
    * Returns the value of the "id" attribute.
    *
    * @return The value of the "id" attribute.
    */
   public int getId() {
      return id;
   }
   /**
    * Returns the value of the "name" attribute.
    *
    * @return The value of the "name" attribute.
    */
   public String getName() {
      return name;
   }
   /**
    * Returns the value of the "start" attribute.
    *
    * @return The value of the "start" attribute.
    */
   public Date getStart() {
      return start;
   }
   /**
    * Returns the value of the "sessions" attribute.
    *
    * @return The value of the "sessions" attribute.
    */
   public List<Session> getSessions() {
      return sessions;
   }
   
   /**
    * Sets the value of the "end" attribute.
    *
    * @param end
    *     The value of the "end" attribute.
    */
   public void setEnd(Date end) {
      this.end = end;
   }
   /**
    * Sets the value of the "id" attribute.
    *
    * @param id
    *     The value of the "id" attribute.
    */
   public void setId(int id) {
      this.id = id;
   }
   /**
    * Sets the value of the "name" attribute.
    *
    * @param name
    *     The value of the "name" attribute.
    */
   public void setName(String name) {
      this.name = name;
   }
   /**
    * Sets the value of the "start" attribute.
    *
    * @param start
    *     The value of the "start" attribute.
    */
   public void setStart(Date start) {
      this.start = start;
   }
   /**
    * Sets the value of the "sessions" attribute.
    *
    * @param sessions"
    *     The value of the "sessions" attribute.
    */
   public void setSessions(List<Session> sessions) {
      this.sessions = sessions;
   }

}