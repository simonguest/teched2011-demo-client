package com.neudesic.samples;
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

import java.util.List;

import org.restlet.data.MediaType;
import org.restlet.data.Preference;
import org.restlet.data.Reference;
import org.restlet.ext.odata.Query;
import org.restlet.representation.Representation;
import org.restlet.resource.ClientResource;
import org.restlet.resource.ResourceException;

import sessionmodel.Session;
import sessionmodel.Speaker;
import sessionmodel.Timeslot;

/**
* Generated by the generator tool for the OData extension for the Restlet framework.<br>
*
* @see <a href="http://sguest01/NeuConf/Services/ODATA.svc/$metadata">Metadata of the target OData service</a>
*
*/
public class TrmobileWebModelsService extends org.restlet.ext.odata.Service {

    /**
     * Constructor.
     * 
     */
    public TrmobileWebModelsService() {
        super("http://sguest01/TechEdDemoMVC/Services/ODATA.svc/");
    }

    /**
     * Adds a new entity to the service.
     * 
     * @param entity
     *            The entity to add to the service.
     * @throws Exception 
     */
    public void addEntity(sessionmodel.Session entity) throws Exception {
        addEntity("/Sessions", entity);
    }

    /**
     * Creates a query for session entities hosted by this service.
     * 
     * @param subpath
     *            The path to this entity relatively to the service URI.
     * @return A query object.
     */
    public Query<sessionmodel.Session> createSessionQuery(String subpath) {
        return createQuery(subpath, sessionmodel.Session.class);
    }


    /**
     * Adds a new entity to the service.
     * 
     * @param entity
     *            The entity to add to the service.
     * @throws Exception 
     */
    public void addEntity(sessionmodel.Timeslot entity) throws Exception {
        addEntity("/Timeslots", entity);
    }

    /**
     * Creates a query for timeslot entities hosted by this service.
     * 
     * @param subpath
     *            The path to this entity relatively to the service URI.
     * @return A query object.
     */
    public Query<sessionmodel.Timeslot> createTimeslotQuery(String subpath) {
        return createQuery(subpath, sessionmodel.Timeslot.class);
    }


    /**
     * Adds a new entity to the service.
     * 
     * @param entity
     *            The entity to add to the service.
     * @throws Exception 
     */
    public void addEntity(sessionmodel.Speaker entity) throws Exception {
        addEntity("/Speakers", entity);
    }

    /**
     * Creates a query for speaker entities hosted by this service.
     * 
     * @param subpath
     *            The path to this entity relatively to the service URI.
     * @return A query object.
     */
    public Query<sessionmodel.Speaker> createSpeakerQuery(String subpath) {
        return createQuery(subpath, sessionmodel.Speaker.class);
    }


}