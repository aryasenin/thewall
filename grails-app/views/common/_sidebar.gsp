<div id="sidebar-discover-wrapper">
    <ul class="list-unstyled">

        <li><a href="surveys_multiple.html?lang=en" class="glyphicons home"><i></i><span>${message(code: 'menu.tableauBord.label', default: 'Tableau de bord')}</span></a>
        </li>

        <li>
            <a href="#sidebar-discover-locataire" class="glyphicons user"
               data-toggle="sidebar-discover"><i></i><span>${message(code: 'menu.tenants.label', default: 'Locataires')}</span></a>

            <div id="sidebar-discover-locataire" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>${message(code: 'menu.tenants.label', default: 'Locataires')}</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="gallery_video.html?lang=en"><i class="fa fa-video-camera"></i> ${message(code: 'menu.tenants.actif.label', default: 'Actifs')}</a></li>
                    <li><a href="gallery.html?lang=en"><i class="fa fa-camera"></i> ${message(code: 'menu.tenants.archived.label', default: 'Anciens')}</a></li>
                    <li><a href="gallery.html?lang=en"><i class="fa fa-camera"></i> ${message(code: 'menu.tenant.new.label', default: 'Nouveau locataire')}</a></li>
                </ul>
            </div>
        </li>

        <li>
            <a href="#sidebar-discover-properties" class="glyphicons google_maps"
               data-toggle="sidebar-discover"><i></i><span>${message(code: 'menu.properties.label', default: 'Propriétés')}</span></a>

            <div id="sidebar-discover-properties" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>${message(code: 'menu.properties.label', default: 'Propriétés')}</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="email.html?lang=en"><i class="fa fa-envelope"></i> ${message(code: 'menu.properties.active.label', default: 'Actives')}</a></li>
                    <li><a href="email.html?lang=en"><i class="fa fa-envelope"></i> ${message(code: 'menu.properties.availables.label', default: 'Disponibles')} </a></li>
                    <li><a href="email_compose.html?lang=en"><i class="fa fa-pencil"></i> Inactives</a></li>
                    <li><a href="email_compose.html?lang=en"><i class="fa fa-pencil"></i> Nouvelle propriété</a>
                    </li>
                </ul>
            </div>
        </li>

        <li>
            <a href="#sidebar-discover-courses" class="glyphicons notes"
               data-toggle="sidebar-discover"><i></i><span>Contrats </span></a>

            <div id="sidebar-discover-courses" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>Contrats</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="courses_2.html?lang=en"><i class="fa fa-circle-o"></i>En cours</a></li>
                    <li><a href="courses_listing.html?lang=en"><i class="fa fa-circle-o"></i> Terminés</a></li>
                </ul>
            </div>
        </li>

        <li>
            <a href="#sidebar-discover-support" data-toggle="sidebar-discover"
               class="glyphicons life_preserver"><i></i><span>Demandes de service</span></a>

            <div id="sidebar-discover-support" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>Dem. de service</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="support_tickets.html?lang=en"><span
                            class="badge pull-right badge-inverse">45</span><i class="fa fa-ticket"></i><span>En cours</span></a>
                    </li>
                    <li><a href="support_forum_overview.html?lang=en"><i
                            class="fa fa-folder-o"></i><span>Résolues</span></a></li>
                    <li><a href="support_forum_post.html?lang=en"><i
                            class="fa fa-folder-o"></i><span>Archivées</span></a></li>
                    <li><a href="support_kb.html?lang=en"><i
                            class="fa fa-file-text-o"></i><span>Nouvelle demande</span></a></li>
                </ul>
            </div>
        </li>

        <li>
            <a href="#sidebar-discover-email" class="glyphicons envelope"
               data-toggle="sidebar-discover"><i></i><span>Communication</span></a>

            <div id="sidebar-discover-email" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>Communication</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="email.html?lang=en"><i class="fa fa-envelope"></i> Boite de réception</a></li>
                    <li><a href="email_compose.html?lang=en"><i class="fa fa-pencil"></i> Composer</a></li>
                </ul>
            </div>
        </li>

        <li>
            <a href="#sidebar-discover-manage" class="glyphicons wrench"
               data-toggle="sidebar-discover"><i></i><span>Paramètres</span></a>

            <div id="sidebar-discover-manage" class="sidebar-discover-menu">
                <div class="innerAll text-center border-bottom text-muted-dark">
                    <strong>Paramètrage</strong>
                    <button class="btn btn-xs btn-default close-discover"><i class="fa fa-fw fa-times"></i></button>
                </div>
                <ul class="animated fadeIn">
                    <li><a href="employees.html?lang=en"><i class="fa fa-user"></i> Type de propiètes</a></li>
                    <li><a href="employees.html?lang=en"><i class="fa fa-user"></i> Type de demande</a></li>
                </ul>
            </div>
        </li>
    </ul>
</div>